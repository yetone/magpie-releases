class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4572/magpie-cli-darwin-arm64"
      sha256 "c72227bfc9e10ffa9140769de490ffc1be495c112f4def30dc85163d501415b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4572/magpie-cli-darwin-amd64"
      sha256 "b8717945e610d57e7a0a8741185c196a5124b9579be95fd268ff0d7e94ac1ba4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4572/magpie-cli-linux-arm64"
      sha256 "35a2679f94c0051d3fdf4183a2816265ced95ee0c94cdb3331dbdf9ea91a6b92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4572/magpie-cli-linux-amd64"
      sha256 "5b15ba3b5e6fdc3fa0bdb851ae52621aa3ba933cefb7abbf63d53d34a67678e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
