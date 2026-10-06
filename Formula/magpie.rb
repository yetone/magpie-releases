class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1081/magpie-cli-darwin-arm64"
      sha256 "967154ce91da4f172f1640ac908d75d5980432c8f7e157c70837a96898cc8881"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1081/magpie-cli-darwin-amd64"
      sha256 "a6848a96837d1127a82e3ec86de62d01781f6e002c649e5e639ab49ee73e3f46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1081/magpie-cli-linux-arm64"
      sha256 "1699889ccf18f0b2e781a85d3ea41c6047be2551ba308f5dd659fd04bcc63bcd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1081/magpie-cli-linux-amd64"
      sha256 "cecc88715ea3aacb0b267d0c28fb5212f0f32331c70f972743afd927c7581726"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
