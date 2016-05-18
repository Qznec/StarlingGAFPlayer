/**
 * Created by Nazar on 03.03.14.
 */
package com.catalystapps.gaf.data.config
{
	/**
	 * @private
	 */
	public class CExternalObjects
	{
		//--------------------------------------------------------------------------
		//
		//  PUBLIC VARIABLES
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  PRIVATE VARIABLES
		//
		//--------------------------------------------------------------------------

		private var _externalObjectsDictionary: Object;

		//--------------------------------------------------------------------------
		//
		//  CONSTRUCTOR
		//
		//--------------------------------------------------------------------------

		public function CExternalObjects()
		{
			_externalObjectsDictionary = {};
		}

		//--------------------------------------------------------------------------
		//
		//  PUBLIC METHODS
		//
		//--------------------------------------------------------------------------

		public function addExternalObject(externalObject: CExternalObject): void
		{
			if (!this._externalObjectsDictionary[externalObject.id])
			{
				this._externalObjectsDictionary[externalObject.id] = externalObject;
			}
		}

		public function getExternalObject(id: String): CExternalObject
		{
			if (this._externalObjectsDictionary[id])
			{
				return this._externalObjectsDictionary[id];
			}
			else
			{
				return null;
			}
		}

		//--------------------------------------------------------------------------
		//
		//  PRIVATE METHODS
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		// OVERRIDDEN METHODS
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  EVENT HANDLERS
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  GETTERS AND SETTERS
		//
		//--------------------------------------------------------------------------

		public function get externalObjectsDictionary(): Object
		{
			return this._externalObjectsDictionary;
		}

		//--------------------------------------------------------------------------
		//
		//  STATIC METHODS
		//
		//--------------------------------------------------------------------------

	}
}
