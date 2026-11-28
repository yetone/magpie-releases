class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4996/magpie-cli-darwin-arm64"
      sha256 "7241890469ebaee29ce29f3ee7f443a281dbec32579f6f2d7f4de662ebd2e7ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4996/magpie-cli-darwin-amd64"
      sha256 "cb1595dbb54e7fb00b9251a54b3d2e9c377dedde22c937d6de0cefd042f1d9d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4996/magpie-cli-linux-arm64"
      sha256 "9dc8f0e865578910eb19035df99e592e89f0423b9b803c353ac4f210b8112c00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4996/magpie-cli-linux-amd64"
      sha256 "c41183463f222b7eb5381bf5a2c2143dc7f03d2f71a028aabacc09c998e03172"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
