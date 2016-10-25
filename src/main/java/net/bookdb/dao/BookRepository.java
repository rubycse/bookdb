package net.bookdb.dao;

import net.bookdb.domain.Book;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

/**
 * @author lutfun
 * @since 10/24/16
 */

@Transactional
public interface BookRepository extends CrudRepository<Book, Long> {
}
