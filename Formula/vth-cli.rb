# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VthCli < Formula
  desc ""
  homepage "https://azarc.io/"
  version "1.0.0"
  license "Apache"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9923041cb5f113642753a42f628399949b6c27140a438206b554ea302f56fc79"

      def install
        bin.install "vth-cli-1.0.0-darwin-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Darwin-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "436d654cf69224d84c528be572e928d4df2fcf9bffb1088795c3dcb40c224000"

      def install
        bin.install "vth-cli-1.0.0-darwin-amd64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Linux-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c3c912c7b8ce83e1084f464a7f5df368132b89ad8d0c325cf4fbf29c6829f4d9"

      def install
        bin.install "vth-cli-1.0.0-linux-arm64"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/azarc-io/vth-cli/releases/download/v1.0.0/vth-cli-1.0.0-Linux-x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e0500d6792dc58a102e72354c60f99f5ba7c47539b1569d745ac038bf29e7ead"

      def install
        bin.install "vth-cli-1.0.0-linux-amd64"
      end
    end
  end

  test do
    system "#{bin}/vth2 -v"
  end
end
