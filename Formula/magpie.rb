class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4040/magpie-cli-darwin-arm64"
      sha256 "2f0494dc192abc62eddf9640f2dda14517c723d59ff66af1fab9b67c4248a59d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4040/magpie-cli-darwin-amd64"
      sha256 "83d6ef64743147331c2a6a3f992e883959d9a6730b6e0e0ea051cc34b8241952"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4040/magpie-cli-linux-arm64"
      sha256 "2459661fe46030e6542207d762d046342a2556d5b4cfab9c84c043b7d334dba3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4040/magpie-cli-linux-amd64"
      sha256 "09ba756a3bc24368f81b4a858630fe7bfa422dce6aa43a20d16e7118d01d78b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
