cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4638"
  sha256 arm:   "b8485fb1fc68536ec82ee091750bbfd648072ea5458e429a6c5cd6aa48af0d33",
         intel: "394d6c96412aaf92ef5be536dfb9922821de4a9549e157b84daa4379387077bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
