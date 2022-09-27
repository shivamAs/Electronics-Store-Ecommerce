package com.sky.stores.service;

import javax.mail.MessagingException;

import com.sky.stores.entity.Contact;

public interface ContactService {
	
	void saveContacts(Contact contact) throws MessagingException;

}
