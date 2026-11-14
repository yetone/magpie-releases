cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4152"
  sha256 arm:   "3f2e661cf487779a96637d4d705c358fe0865acc9ef8c3c09082081e1e073065",
         intel: "75058369f95d293532d94b752453536215e909e4ec7d19b4ef5164c6eaf86c2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
