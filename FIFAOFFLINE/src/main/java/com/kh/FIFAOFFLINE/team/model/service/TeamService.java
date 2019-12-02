package com.kh.FIFAOFFLINE.team.model.service;

import java.util.ArrayList;

import com.kh.FIFAOFFLINE.team.model.vo.PageInfo;
import com.kh.FIFAOFFLINE.team.model.vo.Team;
import com.kh.FIFAOFFLINE.team.model.vo.TeamJoinedMember;
import com.kh.FIFAOFFLINE.team.model.vo.TeamMember;

public interface TeamService {

	int getListCount();

	ArrayList<Team> selectList(PageInfo pi);

	Team teamDetail(int tNo);

	ArrayList<TeamJoinedMember> selectJoinList(int tNo);

	ArrayList<TeamMember> selectMemberList(int tNo);

	ArrayList<Team> selectMyTeam(int userNo);
	
	

}
