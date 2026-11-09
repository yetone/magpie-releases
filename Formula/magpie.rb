class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3381/magpie-cli-darwin-arm64"
      sha256 "ec803b8371197e813504aaf3ead87855ee89fb93f1e4dd67b51c575d0b7b20e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3381/magpie-cli-darwin-amd64"
      sha256 "f15d9ae813c5c172f3ca101132b2728e31390619f1419638b902d241c7354789"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3381/magpie-cli-linux-arm64"
      sha256 "1d5c4dc226a9fc2434c54ee7dae41c9d4e2819784d1d460de9f0720e4825b8fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3381/magpie-cli-linux-amd64"
      sha256 "5c73a81c5bfebb90ac4eb91f2e979eb3bc2d421937b052e9a533486980104f63"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
