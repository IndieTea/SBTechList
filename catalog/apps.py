from django.apps import AppConfig


class CatalogConfig(AppConfig):
    name = 'catalog'


"""
You must include the name attribute for Django to determine which application this configuration applies to.
	name = 'SBTechList'
	verbose_name = "SBTechList"
"""
