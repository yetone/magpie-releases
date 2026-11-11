cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3767"
  sha256 arm:   "898854872a3275ef8de60703961f337939e1d61962457d3f33f41a812413f9eb",
         intel: "062b8ae20a6082509929941ebb6871b40141f3f298c55583f5a1f9abee896c03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
