cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2689"
  sha256 arm:   "7fe000f0f56f126449ed8704327d40a732f37837fb24de06b8f881a38481ab86",
         intel: "350cabe084223c920b0acc17e6a50453ffcf2b0f15077f019f2b4ad11edfd999"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
