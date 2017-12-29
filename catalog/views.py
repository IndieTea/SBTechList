from django.shortcuts import render
from django.http import HttpResponse
from catalog import models

# Create your views here.
def index(request):
	return HttpResponse("A list of start ups and businesses based in sunny Santa Barbara, California")

""" # Create redirect view
class CatalogRedirectView(RedirectView):
	permanent = False
    query_string = True
    pattern_name = 'catalog-detail'

    def get_redirect_url(self, *args, **kwargs):
        catalog = get_object_or_404(Article, pk=kwargs['pk'])
        catalog.update_counter()
        return super().get_redirect_url(*args, **kwargs)
"""


#create function that returns contents of Postgres DB