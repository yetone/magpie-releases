cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.985"
  sha256 arm:   "f6f13d37491434fea114efa67b696016366f3d78029a46690e92bfd70663a116",
         intel: "10b4777aaec382671dc5fe515486c0bc93e66633eb725dc0737f7696bc8d4f5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
