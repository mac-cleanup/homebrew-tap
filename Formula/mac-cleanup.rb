class MacCleanup < Formula
  desc "🗑️ cleanup script for macos"
  homepage "https://github.com/mac-cleanup/mac-cleanup"
  license "MIT"

  def install
    bin.install "mac-cleanup"
  end

  test do
    assert_match "🗑️  Cleanup script for macOS (by github.com/fwartner)", shell_output("#{bin}/mac-cleanup -h", 2)
  end
end
