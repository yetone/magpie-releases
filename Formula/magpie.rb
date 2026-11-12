class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3855/magpie-cli-darwin-arm64"
      sha256 "a032264c564cabf5c4ca46743d6ce881ce42bf2bf4a569b608cc9b7318020b87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3855/magpie-cli-darwin-amd64"
      sha256 "6494c52827adf3513c68af3f8e70e14ae82b56250ad213a7d514f6ca78204948"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3855/magpie-cli-linux-arm64"
      sha256 "3ffac4dde054033520fdcbb292c9a54624287b022b71b005dc289a223e3022f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3855/magpie-cli-linux-amd64"
      sha256 "7e5e94493efbc4e04fe445b102e0ef36bd971f7ad64f8b379357a80e62d5cb3b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
