package com.uangel.coworkers.api.meetingroom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uangel.coworkers.exception.BusinessException;

@Service
public class MeetingRoomServiceImpl implements MeetingRoomService {
	
	@Autowired
	MeetingRoomRepository repository;
	
	public List<MeetingRoom> getMeetingRooms() throws BusinessException{
		if(repository.count() < 0) {
			throw new BusinessException("S012", "회의실");
		}
		
		return (List<MeetingRoom>) repository.findAll();
	}
}
