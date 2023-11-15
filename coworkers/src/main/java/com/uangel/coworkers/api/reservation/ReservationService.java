package com.uangel.coworkers.api.reservation;

import java.util.Date;
import java.util.List;

import com.uangel.coworkers.exception.BusinessException;

public interface ReservationService {
	public Reservation getReservation(Long rid) throws BusinessException;
	public List<Reservation> getReservations() throws BusinessException;
	public List<Reservation> getReservations(Date date) throws BusinessException;
	public Reservation postReservation(Reservation reservation) throws BusinessException;
	public Reservation putReservation(Reservation reservation) throws BusinessException;
}
