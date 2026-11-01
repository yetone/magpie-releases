class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2613/magpie-cli-darwin-arm64"
      sha256 "5e0ce524076022653e449d80cb84f55c340b59e7267704cf6b077031bbf17a88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2613/magpie-cli-darwin-amd64"
      sha256 "f125ec186cf367ddbfc3e1960d3c1b5fb3e868d509113fb2689504f8318a8cc7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2613/magpie-cli-linux-arm64"
      sha256 "c8c352c5886bffe28fca254a33445955ff19991ed467f22001dffe76ad2be5f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2613/magpie-cli-linux-amd64"
      sha256 "c3ff5a2f78ab4c80875897431efeb835b0d1ccb56ac75dfdfac15dcf5bb412b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
