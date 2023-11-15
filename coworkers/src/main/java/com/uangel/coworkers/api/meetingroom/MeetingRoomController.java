package com.uangel.coworkers.api.meetingroom;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.uangel.coworkers.exception.BusinessException;

@RestController
public class MeetingRoomController {
	private static final Logger logger = LoggerFactory.getLogger(MeetingRoomController.class);
	
	@Autowired
	MeetingRoomService service;
	
	@RequestMapping(path = "/meeting-rooms", method = RequestMethod.GET)
	public Object getMeetingRooms() throws BusinessException {
		logger.debug("start");
		return service.getMeetingRooms();
	}
}
