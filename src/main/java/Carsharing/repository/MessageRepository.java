package Carsharing.repository;

import Carsharing.domain.Message;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findByTag (String tag);

}
