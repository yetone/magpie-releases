class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4683/magpie-cli-darwin-arm64"
      sha256 "a86411f7b5ff78c7082f194b3b47396562abd7cedd501763d29d6513235b4d5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4683/magpie-cli-darwin-amd64"
      sha256 "d7c9da4a9a16f7f7603f748d4082b087810e9aa3269f39431651ed72587b48d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4683/magpie-cli-linux-arm64"
      sha256 "3d1f67719156efc9d4888bee43cc93c7d8214e342c48a3c8a74b4cb693761243"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4683/magpie-cli-linux-amd64"
      sha256 "f0d4d4c5d320f30e801b339556bb6a9e59475cd51e9665d0bc67fd3d9b666171"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
