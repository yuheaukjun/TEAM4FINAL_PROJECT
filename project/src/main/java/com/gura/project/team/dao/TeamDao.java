package com.gura.project.team.dao;

import java.util.List;import javax.servlet.http.HttpServletRequest;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dto.UsersDto;


public interface TeamDao {
	public void insert(TeamDto dto);
	public List<TeamDto> joining_data(TeamDto dto);
	public TeamDto getData(TeamDto dto);
	public List<TeamDto> teamList(TeamDto dto);
	public List<UsersDto> join_user_getdata(List<TeamDto> joindto);
	public void joining(TeamDto dto);
	public void joinupdate(TeamDto dto);
	public List<UsersDto> teamMemberList(TeamDto dto);
	public void leader_upadte(TeamDto dto);
	public List<MatchDto> awayteam(MatchDto matchDto);
	public void joindelete (TeamDto dto);
	public List<UsersDto> joininfo(List<TeamDto> list);
	public List<TeamDto> awayteaminfo(List<MatchDto> awayteamlist);
	public TeamDto getjointeam(String id);
	public int getCount(TeamDto dto);
	public List<TeamDto> mainpageteamlist();

	
	
	
	
	
}
