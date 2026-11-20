cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4608"
  sha256 arm:   "baa27ed4c9ffc3fabd1d56e7ca1d4f30a1112667e90ee57780658bf876209843",
         intel: "65278cb5a13a67f3b845fab8d84950da3cf5df28208d6f63f41693087a71a6dd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
