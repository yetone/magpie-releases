class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4883/magpie-cli-darwin-arm64"
      sha256 "bd0eb33c9931654a331ceb9c7d8fd8301a51f55ab2f3795752a7b6866bec274b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4883/magpie-cli-darwin-amd64"
      sha256 "4cf1d3a4210baa4360ec73f8e533964f939f1c893e5d5fe6b5d7af02df8f2d3c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4883/magpie-cli-linux-arm64"
      sha256 "e7c2da946ad09f492e0d78b0850f54bef0a58139433dad5e01ac8fd7e4de544f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4883/magpie-cli-linux-amd64"
      sha256 "9f53008525418dfb45e97b259e13ae9792e4667c7e3b0962e428e2c56a4e6aeb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
