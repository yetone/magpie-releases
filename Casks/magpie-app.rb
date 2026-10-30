cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2134"
  sha256 arm:   "066b97566ff4c754527ec73902636eec31230a0ac8fc03ea80b236afea88248c",
         intel: "363cfad48fc28b617be8a03c7b110082fb79a30a20695113962cc3f1e3c79fac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
