class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4149/magpie-cli-darwin-arm64"
      sha256 "3034b1eaa1557ee9d840766fe976c5eea7258f829f79a6a6f0a132d85afb4fb2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4149/magpie-cli-darwin-amd64"
      sha256 "c3a0e83712411fc81ebed84946c11f1e64bf7104bd59f643d4be57ba1a65e1d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4149/magpie-cli-linux-arm64"
      sha256 "827b2889a792bcade5c93e35d94c810b73020539f54fd460e93e09c93d4293db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4149/magpie-cli-linux-amd64"
      sha256 "42ce387e6e59df4a7687237b00bab8bb7cf2f126816fd10d8ccd68ac43a992e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
