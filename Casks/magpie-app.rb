cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4404"
  sha256 arm:   "2c8f6f2f185e2682bebdd43f4837f59d1088a926f2dc99fa4f08dacbd3062ec0",
         intel: "511a5d12a5c97a2d5b3c1bd5debd0407d46f8b950c8640ab71808fd6bf8684bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
