class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3306/magpie-cli-darwin-arm64"
      sha256 "6b660a4808ea1657c64b7849ea4190328194dc94342a14f7f2319e0ced3fb47b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3306/magpie-cli-darwin-amd64"
      sha256 "53e2ba3d5e9ce74453cdb7c175e4735473dc90484a3f3aa53cce1b1e2ac15ee3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3306/magpie-cli-linux-arm64"
      sha256 "39a129840f8a77f5aeed451b6e9d57672d00507b4be4e29cc769541edce91dd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3306/magpie-cli-linux-amd64"
      sha256 "7df780bc5e5d2ba6072dafee3f011a4200a678bb574fb07a915ca1706e90fe68"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
