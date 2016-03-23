context("Query")

test_that("Results of query by species", {
    org<-SpidermiRquery_species(species)
    expect_that(length(org), equals(1))
    expect_that(org[1,], equals("Arabidopsis_thaliana.COMBINED"))
})

test_that("Results of query by network categories", {
    org<-SpidermiRquery_species(species)
	net_type<-SpidermiRquery_networks_type(organismID=org[18,])
    expect_that(length(net_type), equals(7))
    expect_that(net_type[1], equals("Co-localization"))
})

