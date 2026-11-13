class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4070/magpie-cli-darwin-arm64"
      sha256 "04e45ef3c50d58285f8869b793c533a1abf1eeab0fd61811482bc26ce837d13d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4070/magpie-cli-darwin-amd64"
      sha256 "b6fa665e60783658a49e070a8f70acd8df37bf8ead74a8ee8b6c47bfc0c22fe0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4070/magpie-cli-linux-arm64"
      sha256 "cc670d14ae8f7c5ed875011fc55fedf1f20108aaa155c1431fe17afeb7dcd7d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4070/magpie-cli-linux-amd64"
      sha256 "cba8fee83a1bed76f11750ce818d9a4a9b80cf5b36d1f72d560ca690a8842b48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
