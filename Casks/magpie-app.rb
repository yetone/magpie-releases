cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2443"
  sha256 arm:   "be5c8da0117a7be4718f69443d6002679ac104f643a34775ddf5f5849858b8ed",
         intel: "03d6b3db739133085d1043dda86995c4fb6694ff06d9e5df908ca5322aad3ccd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
