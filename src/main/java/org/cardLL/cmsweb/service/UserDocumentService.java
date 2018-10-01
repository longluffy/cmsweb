package org.cardLL.cmsweb.service;

import java.util.List;

import org.cardLL.cmsweb.entity.UserDocument;

public interface UserDocumentService {

	UserDocument findById(int id);

	List<UserDocument> findAll();
	
	List<UserDocument> findAllByUserId(int id);
	
	void saveDocument(UserDocument document);
	
	void deleteById(int id);
}
