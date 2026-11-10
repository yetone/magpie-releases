class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3543/magpie-cli-darwin-arm64"
      sha256 "5f53a8ed784bd7c552fbe4f8f8535722a7114ba8f312f9073655f4298e3ded4d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3543/magpie-cli-darwin-amd64"
      sha256 "6dd399dc45838927bf3c58d121368f13f8bd5b38d7d6687533cb3bb94ce32a92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3543/magpie-cli-linux-arm64"
      sha256 "91ead5b0fba9e856d5452d02ef59e5140133ebf68d1b688c6b55760eedb77b94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3543/magpie-cli-linux-amd64"
      sha256 "5ceb632adadcef76ea65e97a516bf2edf0ae7980b9593a30982dd5edf75a528f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
