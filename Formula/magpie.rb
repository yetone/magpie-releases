class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.995/magpie-cli-darwin-arm64"
      sha256 "b1beddd727aa04063b9df950175fdd89fbfc9d1d3765a0efb3caa99b17163a21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.995/magpie-cli-darwin-amd64"
      sha256 "5afedb0c4e7bbc20d97bc96b4c7bdf03782b20ae7f0dc1767dcf30079dda3b23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.995/magpie-cli-linux-arm64"
      sha256 "abb1e2c3066df011ac683ded74cab5732211d32e158c2c758aaa2449b62d0fac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.995/magpie-cli-linux-amd64"
      sha256 "80f039cf447e613e85a2b14fad11d621313dac99296deaec2cbb91ad69e705a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
