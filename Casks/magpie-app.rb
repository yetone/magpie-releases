cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3765"
  sha256 arm:   "b6fb81bdcc0b63501954a5287e528576f0632197d688bc80e88ba579e73c6e96",
         intel: "812f2bbcf92572413b3ba40efd49bc790a06eff0a1c429b8de4367b80e5a9e56"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
