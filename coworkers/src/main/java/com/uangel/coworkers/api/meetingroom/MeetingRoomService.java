package com.uangel.coworkers.api.meetingroom;

import java.util.List;

import com.uangel.coworkers.exception.BusinessException;

public interface MeetingRoomService {
	public List<MeetingRoom> getMeetingRooms() throws BusinessException;
}
