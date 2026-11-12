cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3956"
  sha256 arm:   "5da9e2faf0cd3299088fcba36e8499a447d6a3635305664a74822ec818f09e9e",
         intel: "2329388ce73ffcdf3a65a63ae3505e5f97d3299ff7beb5998ddc26483267a2fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
