class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3373/magpie-cli-darwin-arm64"
      sha256 "8904c3e44dd00f51d41ac992c30e878ef8c809aa287780088df501ffba19c35e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3373/magpie-cli-darwin-amd64"
      sha256 "ae5bd824742a9044411aec08d8a2acaa05e7436e0de44269ce310ddaf926e1b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3373/magpie-cli-linux-arm64"
      sha256 "5d5566971cf0c18094e6633eecc0fdcea38c429f2234604251541d3254e390df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3373/magpie-cli-linux-amd64"
      sha256 "a5d21d7d372600f5fd74c73b15144acbeb6a231bda173ccb33c444fbfb2c2f70"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
