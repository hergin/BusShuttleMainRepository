--
-- Table structure for table `inspection_items_list`
--

CREATE TABLE `inspection_items_list` (
  `id` int(11) NOT NULL,
  `inspection_item_name` varchar(255) DEFAULT NULL,
  `post_trip_inspection` bit(1) NOT NULL DEFAULT b'0',
  `pre_trip_inspection` bit(1) NOT NULL DEFAULT b'0',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inspection_report`
--

CREATE TABLE `inspection_report` (
  `id` int(11) NOT NULL,
  `driver` int(11) DEFAULT NULL,
  `loop` int(11) NOT NULL,
  `bus_identifier` int(11) DEFAULT NULL,
  `t_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_added` date DEFAULT NULL,
  `beginning_hours` int(11) NOT NULL,
  `ending_hours` int(11) NOT NULL,
  `starting_mileage` int(11) DEFAULT NULL,
  `ending_mileage` int(11) DEFAULT NULL,
  `pre_trip_inspection` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `post_trip_inspection` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `pre_comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_comment` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_deleted` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Indexes for table `inspection_items_list`
--
ALTER TABLE `inspection_items_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspection_report`
--
ALTER TABLE `inspection_report`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for table `inspection_items_list`
--
ALTER TABLE `inspection_items_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspection_report`
--
ALTER TABLE `inspection_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;