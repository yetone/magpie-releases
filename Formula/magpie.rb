class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.971/magpie-cli-darwin-arm64"
      sha256 "d8d99eefddb864326e125d23a97e765d8a6a8c848370e64fd022885f30e75ca1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.971/magpie-cli-darwin-amd64"
      sha256 "5989905900a6021bb7250baff718ef5c0429f3fd234c4066129de2514f47b44c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.971/magpie-cli-linux-arm64"
      sha256 "a4d353e2eb640244e9c76b38daeb5b7d1f5fd53a85db8faff16996d1f567c1ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.971/magpie-cli-linux-amd64"
      sha256 "be6e5067326def3a1ee565de7c05addf591ee30cf3e2bacd970d3a0d8c8b9ba9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
