cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4074"
  sha256 arm:   "6a2fd9bdc4a04951efd4e7c5f7f4e19405dc752e346deaaccec8259caa680b97",
         intel: "aa346b337c9a87c3334ec4ee51d46fb1f61b3f206eecd024c597f1ba27e8239c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
