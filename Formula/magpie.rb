class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4794/magpie-cli-darwin-arm64"
      sha256 "495cf95d6294f21ed30c4511b6ff847213b7ed33002ce0a5edd7728aedf7d082"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4794/magpie-cli-darwin-amd64"
      sha256 "b13788a54dfe085211df575703e490d950b81b46513b07816e074938c8bd1b78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4794/magpie-cli-linux-arm64"
      sha256 "531ebb7e4bc0daf2e7da1690b08f121bef84b5b9724eab9beca7dd99153f9fb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4794/magpie-cli-linux-amd64"
      sha256 "6d3d6a12acf7318b1bb0d8a020ccbf924407523137e59989b43ac69ad73778e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
