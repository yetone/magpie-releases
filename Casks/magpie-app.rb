cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2758"
  sha256 arm:   "bf5785db029975e7863f3d08d57e326cf0ebf249c5afb2915dbfbd24ba6a2f4e",
         intel: "31006bc0a4abf26f3f3c425f1a08b14a9f37ede50c1feaf5c49b6943ea118eb5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
