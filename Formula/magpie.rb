class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2710/magpie-cli-darwin-arm64"
      sha256 "3b68b7e1716d2209c396a320cf0ac57fd3b72a4da401ca40bdaed36cb9e7e845"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2710/magpie-cli-darwin-amd64"
      sha256 "16e371d33c6f896f11daacece53d3dd04d8648a4955fa474136794bd0d5add55"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2710/magpie-cli-linux-arm64"
      sha256 "e193f330901a32096ea4e8bdef3dd2f720f7fe366bf13d2d513f25abffedac83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2710/magpie-cli-linux-amd64"
      sha256 "e8d18a3365dcf757f67932b1a47dddbd0188394b39d8cfa5d49a2192076bb4b6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
