class MacCleanup < Formula
  version "1.0.3"
  desc "🗑️ cleanup script for macos"
  homepage "https://github.com/mac-cleanup/mac-cleanup"
  if Hardware::CPU.intel?
    url "https://github.com/mac-cleanup/mac-cleanup/releases/download/v#{version}/mac-cleanup_#{version}_mac_amd64.tar.gz"
    sha256 "c621ba01977193b0ffadca22345b758a67ca5daf751eda4ded5ca4cfe4e17465"
  else
    url "https://github.com/mac-cleanup/mac-cleanup/releases/download/v#{version}/mac-cleanup_#{version}_mac_arm64.tar.gz"
    sha256 "65af6eb95764cad3af8863bd9a133f372f07f885f167780271ac612244f72f8a"
  end
  license "MIT"

  def install
    bin.install "mac-cleanup"
  end

  test do
    assert_match "🗑️  Cleanup script for macOS (by github.com/fwartner)", shell_output("#{bin}/mac-cleanup -h", 2)
  end
end
