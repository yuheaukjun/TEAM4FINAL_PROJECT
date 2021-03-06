package com.gura.project.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.taglibs.standard.tag.common.core.ForEachSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dto.UsersDto;


@Repository
public class TeamDaoImpl implements TeamDao {
	
	@Autowired
	public SqlSession session;
	
	//글의 갯수 (검색어에 일치하는) 리턴하기 
	@Override
	public int getCount(TeamDto dto) {
		/*
		 *  parameterType => CafeDto
		 *  resultType => int 
		 */
		int count=session.selectOne("team.getCount",dto);
		return count;
	}
	
	@Override
	public void insert(TeamDto dto) {
		session.insert("team.insert",dto);
		
	}
	//detail
	@Override
	public List<TeamDto> joining_data(TeamDto dto) {
		return  session.selectList("team.joindata",dto);
		
	}

	@Override
	public TeamDto getData(TeamDto dto) {
		
		return session.selectOne("team.getData",dto);
	}
	@Override
	public List<UsersDto> join_user_getdata(List<TeamDto> joindto) {
		
		return  session.selectList("team.join_user_getdata", joindto);
		
	}

	@Override
	public List<TeamDto> teamList(TeamDto dto) {
		
		return session.selectList("team.getList",dto);
	}
	@Override
	public void joining(TeamDto dto) {
		session.insert("team.joinlist_insert",dto);
		
	}
	@Override
	public void joinupdate(TeamDto dto) {
		session.update("team.joinupdate",dto);
		
	}
	@Override
	public List<UsersDto> teamMemberList(TeamDto dto) {
		
		return session.selectList("team.memberliset",dto);
	}
	@Override
	public void leader_upadte(TeamDto dto) {
		session.update("team.leader_update",dto);
		
	}
	@Override
	public List<MatchDto> awayteam(MatchDto matchDto) {
		return session.selectList("team.awayteam", matchDto);
	}
	@Override
	public void joindelete(TeamDto dto) {
		session.delete("team.joindelete", dto);
		
	}
	
	@Override
	public List<UsersDto> joininfo(List<TeamDto> list) {
		
		List<UsersDto> joininfolist= new ArrayList<>();
		//tmp.getJoinid = HomeTeam에 가입신청한 사람들의 아이디
		for(TeamDto tmp: list){
			UsersDto dto = session.selectOne("team.joininfo",tmp.getJoinid());
			joininfolist.add(dto);
			};
		return  joininfolist;
	}
	
	@Override
	public List<TeamDto> awayteaminfo(List<MatchDto> awayteamlist) {
		List<TeamDto> awayteaminfo= new ArrayList<>();
		for(MatchDto tmp: awayteamlist){
			TeamDto dto = session.selectOne("team.awayteaminfo",tmp.getAwayTeam());
			TeamDto dto2 = session.selectOne("team.awayteam2",tmp);
			String successMatching = dto2.getSuccessMatching();
			dto.setSuccessMatching(successMatching);
			
			awayteaminfo.add(dto);
			};
		return awayteaminfo;
	}
	@Override
	public TeamDto getjointeam(String id) {
		
		return session.selectOne("team.getjointeam",id);
	}

	@Override
	public List<TeamDto> mainpageteamlist() {
		
		return session.selectList("team.mainpageteamlist");
	}

	
	
	
	
	

}
