# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class VthCli < Formula
  desc "Verathread CLI"
  homepage "https://azarc.io/"
  version "1.0.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b97f96a354d66dbfec1dbaf96b3ab1fccc03968919a7f8a27a049b0e42a6375d"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Darwin-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a94237e5944d4342d4babbac67c13318b0021364d51da4a1f449f47e02473b8c"

      def install
        bin.install "vth2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Linux-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0d72b705ca948e104c27f42d9d1db3a35ae4b43a20ffe20c2f4d532a9b8689a3"

      def install
        bin.install "vth2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Linux-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a704e84376c2c2b63a86a4247e96f842a456689cda48c1c8665801c085ccb87d"

      def install
        bin.install "vth2"
      end
    end
  end

  test do
    system "#{bin}/vth2 -v"
  end
end
