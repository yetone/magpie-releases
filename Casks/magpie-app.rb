cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3182"
  sha256 arm:   "ec815257f335b948c687ecba6e6657974880fc2324fd7f7e860f67ad6f3306b5",
         intel: "6cf2c2b1560bd4463f0d291ced5d49ef3eabd67fb2ebf802e4a43284b2fd6252"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
