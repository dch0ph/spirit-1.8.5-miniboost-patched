//  (C) Copyright Gennadiy Rozental 2003-2006.
//  Distributed under the Boost Software License, Version 1.0.
//  (See accompanying file LICENSE_1_0.txt or copy at 
//  http://www.boost.org/LICENSE_1_0.txt)

//  See http://www.boost.org/libs/test for the library home page.
//
//  File        : $RCSfile$
//
//  Version     : $Revision: 33384 $
//
//  Description : unit test for class properties facility
// ***************************************************************************

// Boost.Test
#include <boost/test/unit_test.hpp>
#include <boost/test/utils/class_properties.hpp>

// STL
#include <vector>

using namespace boost::unit_test;

//____________________________________________________________________________//

struct A {
    operator bool() const { return true; }
} a;

struct B { 
    int foo() const { return 1; }
    int foo()       { return 2; }

    operator int() const { return 1; }
};

BOOST_READONLY_PROPERTY( B*, (C) ) p_b_ptr;

class C {
public:
    static void init()
    {
        p_b_ptr.value = new B;
    }
};

BOOST_READONLY_PROPERTY( A*, (D)(E) ) p_a_ptr;

class D {
public:
    static void init()
    {
        p_a_ptr.value = new A;
    }
};

class E {
public:
    static void reset()
    {
        delete p_a_ptr;
        p_a_ptr.value = new A;
    }
};

void test_readonly_property()
{
    readonly_property<int> p_zero;
    readonly_property<int> p_one( 1 );
    readonly_property<int> p_two( 2 );

    readonly_property<bool> p_true( true );
    readonly_property<bool> p_false( false );
    readonly_property<std::string> p_str( "abcd" );
    readonly_property<std::string> p_str2( "abc" );

    readonly_property<B> p_b;
    readonly_property<A> p_a;

    BOOST_CHECK( p_one );
    BOOST_CHECK( !!p_one );

    int i = p_one;

    BOOST_CHECK( p_one == i );

    double d = p_one;

    BOOST_CHECK( p_one == d );

    BOOST_CHECK( p_one != 0 );
    BOOST_CHECK( 0 != p_one );
    BOOST_CHECK( !(p_one == 0) );
    BOOST_CHECK( !(0 == p_one) );

    float fzero = 0;

    BOOST_CHECK( p_one != fzero );
    BOOST_CHECK( fzero != p_one );

    BOOST_CHECK( p_one >= 1 );
    BOOST_CHECK( 2 > p_one  );

    BOOST_CHECK( !(p_one == p_two) );
    BOOST_CHECK( p_one != p_two );
    BOOST_CHECK( p_one < p_two );

    BOOST_CHECK_EQUAL( p_zero, 0 );

    BOOST_CHECK( (p_one - 1) == 0 );
    BOOST_CHECK( (-p_one + 1) == 0 );

    BOOST_CHECK( p_true );
    BOOST_CHECK( !p_false );

    BOOST_CHECK( (i > 0) && p_true );
    BOOST_CHECK( p_true && (i > 0) );
    BOOST_CHECK( (i > 0) || p_false );
    BOOST_CHECK( p_false || (i > 0) );

    BOOST_CHECK( a && p_true );
    BOOST_CHECK( a || p_true );

    BOOST_CHECK( p_true && a );
    BOOST_CHECK( p_true && a );

    std::string s( "abcd" );

    BOOST_CHECK( p_str == s );
    BOOST_CHECK( s == p_str );
    BOOST_CHECK( p_str2 != p_str );


    BOOST_CHECK_EQUAL( p_b->foo(), 1 );

    BOOST_CHECK_EQUAL( p_one ^ 3, 2 );
    BOOST_CHECK_EQUAL( p_two / 2, 1 );

    BOOST_CHECK( !p_b_ptr );
    C::init();
    BOOST_CHECK( p_b_ptr );

    BOOST_CHECK( !p_a_ptr );
    D::init();
    BOOST_CHECK( p_a_ptr );
    E::reset();
    BOOST_CHECK( p_a_ptr );
}

//____________________________________________________________________________//

void test_readwrite_property()
{
    readwrite_property<int> p_int;

    BOOST_CHECK( !p_int );
    BOOST_CHECK( p_int == 0 );
    BOOST_CHECK( p_int != 1 );

    BOOST_CHECK( p_int < 5 );
    BOOST_CHECK( p_int >= -5 );

    p_int.value = 2;

    BOOST_CHECK( p_int == 2 );
    BOOST_CHECK( p_int );

    p_int.set( 3 );

    BOOST_CHECK( p_int == 3 );

    readwrite_property<B> p_bb1;

    BOOST_CHECK_EQUAL( p_bb1->foo(), 2 );

    readwrite_property<B> const p_bb2;

    BOOST_CHECK_EQUAL( p_bb2->foo(), 1 );

}

//____________________________________________________________________________//

test_suite*
init_unit_test_suite( int /*argc*/, char* /*argv*/[] ) {
    test_suite* test= BOOST_TEST_SUITE("Class Properties test");

    test->add( BOOST_TEST_CASE( &test_readonly_property ) );
    test->add( BOOST_TEST_CASE( &test_readwrite_property ) );

    return test;
}

//____________________________________________________________________________//

// ***************************************************************************
//  Revision History :
//  
//  $Log$
//  Revision 1.8  2006/03/19 11:49:04  rogeeff
//  *** empty log message ***
//
//  Revision 1.7  2005/06/11 19:20:58  rogeeff
//  *** empty log message ***
//
//  Revision 1.6  2005/05/11 05:07:56  rogeeff
//  licence update
//
//  Revision 1.5  2005/01/30 03:35:55  rogeeff
//  no message
//
//  Revision 1.3  2005/01/18 08:30:08  rogeeff
//  unit_test_log rework:
//     eliminated need for ::instance()
//     eliminated need for << end and ...END macro
//     straitend interface between log and formatters
//     change compiler like formatter name
//     minimized unit_test_log interface and reworked to use explicit calls
//
//  Revision 1.2  2005/05/21 06:26:10  rogeeff
//  licence update
//
//  Revision 1.1  2005/05/11 11:05:46  rogeeff
//  basic_cstring introduced and used everywhere
//  class properties reworked
//  namespace names shortened
//
//  Revision 1.3  2003/12/01 00:42:37  rogeeff
//  prerelease cleaning
//
// ***************************************************************************

// EOF
