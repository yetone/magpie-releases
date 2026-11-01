class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2570/magpie-cli-darwin-arm64"
      sha256 "648b60f643812f042546975ea838c77093504bb37f9984be038021d912cc571a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2570/magpie-cli-darwin-amd64"
      sha256 "2a7642d4d207792eec2e9767881a1e92b3040f31c8e752d983747eace81b681d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2570/magpie-cli-linux-arm64"
      sha256 "1eebd0801db3f4d2fbb4207c953c47415a517af744e9123a8224d89ba3283286"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2570/magpie-cli-linux-amd64"
      sha256 "27fac3a349255b096838c1965ed604a27331795410f81e591c61e2a6e94586d9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
