cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.153"
  sha256 arm:   "f808baab002d98f2493128f3802f93a4d26f32494212061a4779c802acfed7e1",
         intel: "52ec0408c055471906d196eca7f0f965ec54941a9ba241453011aea9ebc8987d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
