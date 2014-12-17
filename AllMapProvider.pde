/**
 * An application with a basic interactive map. You can zoom and pan the map.
 */
import de.fhpotsdam.unfolding.mapdisplay.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.tiles.*;
import de.fhpotsdam.unfolding.interactions.*;
import de.fhpotsdam.unfolding.ui.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.core.*;
import de.fhpotsdam.unfolding.mapdisplay.shaders.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.texture.*;
import de.fhpotsdam.unfolding.events.*;
import de.fhpotsdam.utils.*;
import de.fhpotsdam.unfolding.providers.*;

UnfoldingMap map;

void setup() {
  size(800, 600, P2D);

//  map = new UnfoldingMap(this);
  
//  map = new UnfoldingMap(this, new AcetateProvider.All());
//  map = new UnfoldingMap(this, new AcetateProvider.Basemap());
//  map = new UnfoldingMap(this, new AcetateProvider.Foreground());
//  map = new UnfoldingMap(this, new AcetateProvider.Hillshading());
//  map = new UnfoldingMap(this, new AcetateProvider.Labels());
//  map = new UnfoldingMap(this, new AcetateProvider.Roads());
//  map = new UnfoldingMap(this, new AcetateProvider.Terrain());

//  map = new UnfoldingMap(this, new EsriProvider.DeLorme());
//  map = new UnfoldingMap(this, new EsriProvider.NatGeoWorldMap());
//  map = new UnfoldingMap(this, new EsriProvider.OceanBasemap());
//  map = new UnfoldingMap(this, new EsriProvider.WorldGrayCanvas());
//  map = new UnfoldingMap(this, new EsriProvider.WorldPhysical());
//  map = new UnfoldingMap(this, new EsriProvider.WorldShadedRelief());
//  map = new UnfoldingMap(this, new EsriProvider.WorldStreetMap());
//  map = new UnfoldingMap(this, new EsriProvider.WorldTerrain());
//  map = new UnfoldingMap(this, new EsriProvider.WorldTopoMap());

//  map = new UnfoldingMap(this, new GeoMapApp.TopologicalGeoMapProvider());

//  map = new UnfoldingMap(this, new Google.GoogleMapProvider());
//  map = new UnfoldingMap(this, new Google.GoogleSimplified2Provider());
//  map = new UnfoldingMap(this, new Google.GoogleSimplifiedProvider());
//  map = new UnfoldingMap(this, new Google.GoogleTerrainProvider());

//  map = new UnfoldingMap(this, new MapQuestProvider.Aerial());
//  map = new UnfoldingMap(this, new MapQuestProvider.OSM());

//  map = new UnfoldingMap(this, new ImmoScout.HeatMapProvider());

//  map = new UnfoldingMap(this, new MapBox.BlankProvider());
//  map = new UnfoldingMap(this, new MapBox.ControlRoomProvider());
//  map = new UnfoldingMap(this, new MapBox.LacquerProvider());
//  map = new UnfoldingMap(this, new MapBox.MapBoxProvider());
//  map = new UnfoldingMap(this, new MapBox.MuseDarkStyleProvider());
//  map = new UnfoldingMap(this, new MapBox.PlainUSAProvider());
//  map = new UnfoldingMap(this, new MapBox.WorldLightProvider());

//  map = new UnfoldingMap(this, new MapQuestProvider.Aerial());
//  map = new UnfoldingMap(this, new MapQuestProvider.GenericMapQuestProvider());
//  map = new UnfoldingMap(this, new MapQuestProvider.OSM());

//  map = new UnfoldingMap(this, new MBTilesMapProvider());

  map = new UnfoldingMap(this, new Microsoft.AerialProvider());
//  map = new UnfoldingMap(this, new Microsoft.HybridProvider());
//  map = new UnfoldingMap(this, new Microsoft.RoadProvider());

//  map = new UnfoldingMap(this, new OpenMapSurferProvider.Grayscale());
//  map = new UnfoldingMap(this, new OpenMapSurferProvider.Roads());

//  map = new UnfoldingMap(this, new OpenStreetMap.CloudmadeProvider());
//  map = new UnfoldingMap(this, new OpenStreetMap.OpenStreetMapProvider());
//  map = new UnfoldingMap(this, new OpenStreetMap.OSMGrayProvider());

//  map = new UnfoldingMap(this, new StamenMapProvider.Toner());
//  map = new UnfoldingMap(this, new StamenMapProvider.TonerBackground());
//  map = new UnfoldingMap(this, new StamenMapProvider.TonerLite());
 // map = new UnfoldingMap(this, new StamenMapProvider.TonerWaterColor());
 
//  map = new UnfoldingMap(this, new OpenWeatherProvider.Clouds());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.CloudsClassic());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.Precipitation());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.PrecipitationClassic());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.Pressure());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.PressureContour());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.Rain());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.RainClassic());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.Snow());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.Temperature());
//  map = new UnfoldingMap(this, new OpenWeatherProvider.Wind());

//  map = new UnfoldingMap(this, new ThunderforestProvider.Landscape());
//  map = new UnfoldingMap(this, new ThunderforestProvider.OpenCycleMap());
//  map = new UnfoldingMap(this, new ThunderforestProvider.Outdoors());
//  map = new UnfoldingMap(this, new ThunderforestProvider.Transport());

//  map = new UnfoldingMap(this, new Yahoo.AerialProvider());
//  map = new UnfoldingMap(this, new Yahoo.HybridProvider());
//  map = new UnfoldingMap(this, new Yahoo.RoadProvider());

  map.zoomAndPanTo(new Location(52.5f, 13.4f), 10);
  MapUtils.createDefaultEventDispatcher(this, map);
}

void draw() {
  map.draw();
  Location here = map.getLocation(mouseX, mouseY);
  fill(0);
  text(here.getLat() + ", " + here.getLon(), mouseX, mouseY);
}
