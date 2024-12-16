// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books books;

    function setUp() public {
        // Deploy the Books contract with initial values
        books = new Books(
            "Programming Foundry",
            "Durga Prasad Pallapu",
            100
        );
    }

    function test_get_book() public view {
        Books.Book memory book = books.get_book();

        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Durga Prasad Pallapu");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        books.update_pages(200);
        Books.Book memory book = books.get_book();

        assertEq(book.pages, 200);
    }
}
