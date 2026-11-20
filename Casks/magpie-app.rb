cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4578"
  sha256 arm:   "430ae82240498b635067b7d981fd2458c9fd72521eef03c7b0f1c0297f436066",
         intel: "cacb762ae1a19227939cfb02d86d139f9efe3f83acb38028e22712af4f024502"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
