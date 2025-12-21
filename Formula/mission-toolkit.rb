class MissionToolkit < Formula
  desc "Mission Toolkit for Intent-Driven Atomic Development"
  homepage "https://github.com/dnatag/homebrew-mission-toolkit"
  url "https://github.com/dnatag/mission-toolkit/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "442e9075c9e30cfad11025a1e94cf7f2d77e836f0d6db17755c68299ad847339"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"m", ldflags: "-s -w")
  end

  test do
    system "#{bin}/m", "version"
  end
end