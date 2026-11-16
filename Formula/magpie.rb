class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4284/magpie-cli-darwin-arm64"
      sha256 "c583a1f595f5e85c6a20aa13d659f5d5f70a1b1505497cdf058c1e8e21846663"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4284/magpie-cli-darwin-amd64"
      sha256 "9801387b19117bac7cef42d0cdab43932cba257975dcea25b341730a92dc0f5a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4284/magpie-cli-linux-arm64"
      sha256 "c04a1409ae4e67330f2da19e9c182a8101c4a7eb4402f127be23a074c49a8792"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4284/magpie-cli-linux-amd64"
      sha256 "480a87cbfb9d3aba5e382979525897c1ad461d1e55edf0709817b154a08e0f51"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
