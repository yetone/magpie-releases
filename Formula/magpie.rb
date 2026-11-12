class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3929/magpie-cli-darwin-arm64"
      sha256 "13f1a3d46aed8c392084668fd32e4ee168d349d327025d97103a2481fd0d471e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3929/magpie-cli-darwin-amd64"
      sha256 "94ffe71c76355a1bf6ed653f644443e0481797ad25bbfb215754ac79c366706a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3929/magpie-cli-linux-arm64"
      sha256 "a5cb20f36b73de1404c7a5731b8defa04c81c5f180da52bb19e08d5fa6e30170"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3929/magpie-cli-linux-amd64"
      sha256 "408a3e00d44914dd6c2f6f758d64234a6b150c004651bcaf3618e3bc9b35ab06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
